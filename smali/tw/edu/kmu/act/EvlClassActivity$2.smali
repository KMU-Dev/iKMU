.class Ltw/edu/kmu/act/EvlClassActivity$2;
.super Ljava/lang/Object;
.source "EvlClassActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlClassActivity;->initTypeBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlClassActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlClassActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$2;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 133
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$2;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlClassActivity;->access$000(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f0700ad

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 134
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$2;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlClassActivity;->access$100(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "#00FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 135
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$2;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    const-string v0, "teacher"

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlClassActivity;->access$202(Ltw/edu/kmu/act/EvlClassActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$2;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlClassActivity;->access$300(Ltw/edu/kmu/act/EvlClassActivity;)Ltw/edu/kmu/adapter/EvlClassListViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$2;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlClassActivity;->access$300(Ltw/edu/kmu/act/EvlClassActivity;)Ltw/edu/kmu/adapter/EvlClassListViewAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->setClass(Z)V

    .line 138
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$2;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlClassActivity;->access$300(Ltw/edu/kmu/act/EvlClassActivity;)Ltw/edu/kmu/adapter/EvlClassListViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
