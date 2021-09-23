.class Ltw/edu/kmu/act/IRSActivity$7;
.super Ljava/lang/Object;
.source "IRSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 0

    .line 773
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$7;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 778
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$7;->this$0:Ltw/edu/kmu/act/IRSActivity;

    const v0, 0x7f08015f

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 779
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$7;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltw/edu/kmu/act/IRSActivity;->access$4400(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    return-void
.end method
