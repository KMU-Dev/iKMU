.class Ltw/edu/kmu/act/MyKMUActivity$31;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->showTBLClassDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 0

    .line 1282
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$31;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1285
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$31;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$1500(Ltw/edu/kmu/act/MyKMUActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
