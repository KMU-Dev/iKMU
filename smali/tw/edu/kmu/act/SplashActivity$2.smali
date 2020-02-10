.class Ltw/edu/kmu/act/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SplashActivity;->switchActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SplashActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SplashActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Ltw/edu/kmu/act/SplashActivity$2;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Ltw/edu/kmu/act/SplashActivity$2;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-virtual {v1}, Ltw/edu/kmu/act/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    iget-object v1, p0, Ltw/edu/kmu/act/SplashActivity$2;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity$2;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/SplashActivity;->finish()V

    return-void
.end method
