.class Ltw/edu/kmu/act/BasicActivity$2$2;
.super Ljava/lang/Object;
.source "BasicActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/BasicActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/BasicActivity$2;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/BasicActivity$2;)V
    .locals 0

    .line 322
    iput-object p1, p0, Ltw/edu/kmu/act/BasicActivity$2$2;->this$1:Ltw/edu/kmu/act/BasicActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 325
    iget-object p1, p0, Ltw/edu/kmu/act/BasicActivity$2$2;->this$1:Ltw/edu/kmu/act/BasicActivity$2;

    iget-object p1, p1, Ltw/edu/kmu/act/BasicActivity$2;->this$0:Ltw/edu/kmu/act/BasicActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/BasicActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 326
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    iget-object p2, p0, Ltw/edu/kmu/act/BasicActivity$2$2;->this$1:Ltw/edu/kmu/act/BasicActivity$2;

    iget-object p2, p2, Ltw/edu/kmu/act/BasicActivity$2;->this$0:Ltw/edu/kmu/act/BasicActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/BasicActivity;->startActivity(Landroid/content/Intent;)V

    .line 328
    iget-object p1, p0, Ltw/edu/kmu/act/BasicActivity$2$2;->this$1:Ltw/edu/kmu/act/BasicActivity$2;

    iget-object p1, p1, Ltw/edu/kmu/act/BasicActivity$2;->this$0:Ltw/edu/kmu/act/BasicActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/BasicActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method
