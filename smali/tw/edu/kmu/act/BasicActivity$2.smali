.class Ltw/edu/kmu/act/BasicActivity$2;
.super Landroid/os/Handler;
.source "BasicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/BasicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/BasicActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/BasicActivity;)V
    .locals 0

    .line 314
    iput-object p1, p0, Ltw/edu/kmu/act/BasicActivity$2;->this$0:Ltw/edu/kmu/act/BasicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 316
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/BasicActivity$2;->this$0:Ltw/edu/kmu/act/BasicActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x1080055

    .line 319
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u8cbc\u5fc3\u5c0f\u63d0\u793a"

    .line 320
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u76ee\u524d\u7121\u6cd5\u9023\u4e0a\u7db2\u8def"

    .line 321
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u8a2d\u5b9a\u7db2\u8def"

    new-instance v1, Ltw/edu/kmu/act/BasicActivity$2$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/BasicActivity$2$2;-><init>(Ltw/edu/kmu/act/BasicActivity$2;)V

    .line 322
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    new-instance v1, Ltw/edu/kmu/act/BasicActivity$2$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/BasicActivity$2$1;-><init>(Ltw/edu/kmu/act/BasicActivity$2;)V

    .line 330
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
