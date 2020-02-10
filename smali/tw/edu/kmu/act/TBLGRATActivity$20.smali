.class Ltw/edu/kmu/act/TBLGRATActivity$20;
.super Ljava/lang/Object;
.source "TBLGRATActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLGRATActivity;->show99View()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLGRATActivity;

.field final synthetic val$alertDialog:Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;)V
    .locals 0

    .line 1273
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$20;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLGRATActivity$20;->val$alertDialog:Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1277
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$20;->val$alertDialog:Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->dismiss()V

    return-void
.end method
