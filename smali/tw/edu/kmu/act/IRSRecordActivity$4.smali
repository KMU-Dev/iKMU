.class Ltw/edu/kmu/act/IRSRecordActivity$4;
.super Ljava/lang/Object;
.source "IRSRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSRecordActivity;->show99View()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSRecordActivity;

.field final synthetic val$alertDialog:Ltw/edu/kmu/act/IRSRecordActivity$ViewDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSRecordActivity;Ltw/edu/kmu/act/IRSRecordActivity$ViewDialog;)V
    .locals 0

    .line 501
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$4;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/IRSRecordActivity$4;->val$alertDialog:Ltw/edu/kmu/act/IRSRecordActivity$ViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 505
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$4;->val$alertDialog:Ltw/edu/kmu/act/IRSRecordActivity$ViewDialog;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSRecordActivity$ViewDialog;->dismiss()V

    return-void
.end method
