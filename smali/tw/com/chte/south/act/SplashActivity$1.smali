.class Ltw/com/chte/south/act/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/chte/south/act/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/com/chte/south/act/SplashActivity;


# direct methods
.method constructor <init>(Ltw/com/chte/south/act/SplashActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltw/com/chte/south/act/SplashActivity$1;->this$0:Ltw/com/chte/south/act/SplashActivity;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 24
    iget-object v0, p0, Ltw/com/chte/south/act/SplashActivity$1;->this$0:Ltw/com/chte/south/act/SplashActivity;

    invoke-virtual {v0}, Ltw/com/chte/south/act/SplashActivity;->getMainActivity()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Ltw/com/chte/south/act/SplashActivity$1;->this$0:Ltw/com/chte/south/act/SplashActivity;

    invoke-virtual {v2}, Ltw/com/chte/south/act/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 27
    iget-object v1, p0, Ltw/com/chte/south/act/SplashActivity$1;->this$0:Ltw/com/chte/south/act/SplashActivity;

    invoke-virtual {v1, v0}, Ltw/com/chte/south/act/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 28
    iget-object v0, p0, Ltw/com/chte/south/act/SplashActivity$1;->this$0:Ltw/com/chte/south/act/SplashActivity;

    invoke-virtual {v0}, Ltw/com/chte/south/act/SplashActivity;->finish()V

    :cond_0
    return-void
.end method
