.class Ltw/edu/kmu/act/IRS4TAActivity$10;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->showSeqListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 0

    .line 688
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$10;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 693
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
