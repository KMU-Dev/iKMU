.class Ltw/edu/kmu/act/SplashActivity$1;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/SplashActivity;
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

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/SplashActivity$1;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 76
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity$1;->this$0:Ltw/edu/kmu/act/SplashActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/SplashActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity$1;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/SplashActivity;->access$100(Ltw/edu/kmu/act/SplashActivity;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity$1;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/SplashActivity;->access$100(Ltw/edu/kmu/act/SplashActivity;)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity$1;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/SplashActivity;->access$000(Ltw/edu/kmu/act/SplashActivity;)V

    .line 94
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
