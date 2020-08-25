#import "Whatsapp.h"
#import <Cordova/CDV.h>


@implementation Whatsapp




- (void)send:(CDVInvokedUrlCommand*)command{
 

    NSURL *whatsappURL = [NSURL URLWithString:@"whatsapp://send?phone=+5511974706010"];
    if ([[UIApplication sharedApplication] canOpenURL: whatsappURL])
    {

        [[UIApplication sharedApplication] openURL: whatsappURL];
   
    }
    else
    {
       [self showMessage:@"Sem Whatsapp instalado para entrar em contato com o suporte"
       withTitle:@"Erro"];
    }


    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"OK"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

-(void)showMessage:(NSString*)message withTitle:(NSString *)title
{

 UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:title
                                  message:message
                                  preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){

        //do something when click button
    }];
    [alert addAction:okAction];
    UIViewController *vc = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    [vc presentViewController:alert animated:YES completion:nil];
}
@end