.class public Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;
.super Ljava/lang/Object;
.source "TBLGRATActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLGRATActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewDialog"
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field final synthetic this$0:Ltw/edu/kmu/act/TBLGRATActivity;


# direct methods
.method public constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity;)V
    .locals 0

    .line 1291
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1314
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1297
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->dialog:Landroid/app/Dialog;

    .line 1298
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1299
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1300
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const-string p1, "99"

    .line 1302
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    .line 1303
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 1306
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p3, -0x2

    invoke-virtual {p1, p2, p3}, Landroid/view/Window;->setLayout(II)V

    .line 1308
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
