.class Ltw/edu/kmu/act/IRS4TAActivity$17;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->show99View()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field final synthetic val$alertDialog:Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;)V
    .locals 0

    .line 1302
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$17;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/IRS4TAActivity$17;->val$alertDialog:Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1306
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$17;->val$alertDialog:Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;->dismiss()V

    return-void
.end method
