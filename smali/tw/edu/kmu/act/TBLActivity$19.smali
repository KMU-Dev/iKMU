.class Ltw/edu/kmu/act/TBLActivity$19;
.super Ljava/lang/Object;
.source "TBLActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLActivity;->show99View()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLActivity;

.field final synthetic val$alertDialog:Ltw/edu/kmu/act/TBLActivity$ViewDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$ViewDialog;)V
    .locals 0

    .line 1127
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$19;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLActivity$19;->val$alertDialog:Ltw/edu/kmu/act/TBLActivity$ViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1131
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$19;->val$alertDialog:Ltw/edu/kmu/act/TBLActivity$ViewDialog;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLActivity$ViewDialog;->dismiss()V

    return-void
.end method
