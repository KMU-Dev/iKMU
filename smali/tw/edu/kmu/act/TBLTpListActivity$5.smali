.class Ltw/edu/kmu/act/TBLTpListActivity$5;
.super Ljava/lang/Object;
.source "TBLTpListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLTpListActivity;->show99View()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLTpListActivity;

.field final synthetic val$alertDialog:Ltw/edu/kmu/act/TBLTpListActivity$ViewDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLTpListActivity;Ltw/edu/kmu/act/TBLTpListActivity$ViewDialog;)V
    .locals 0

    .line 589
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$5;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLTpListActivity$5;->val$alertDialog:Ltw/edu/kmu/act/TBLTpListActivity$ViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 593
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$5;->val$alertDialog:Ltw/edu/kmu/act/TBLTpListActivity$ViewDialog;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLTpListActivity$ViewDialog;->dismiss()V

    return-void
.end method
