.class public abstract Ltw/com/chte/south/act/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getLayout()I
.end method

.method protected abstract getMainActivity()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Ltw/com/chte/south/act/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Ltw/com/chte/south/act/SplashActivity;->requestWindowFeature(I)Z

    .line 19
    invoke-virtual {p0}, Ltw/com/chte/south/act/SplashActivity;->getLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Ltw/com/chte/south/act/SplashActivity;->setContentView(I)V

    .line 21
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ltw/com/chte/south/act/SplashActivity$1;

    invoke-direct {v0, p0}, Ltw/com/chte/south/act/SplashActivity$1;-><init>(Ltw/com/chte/south/act/SplashActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
