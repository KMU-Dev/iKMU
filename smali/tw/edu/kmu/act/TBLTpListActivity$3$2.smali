.class Ltw/edu/kmu/act/TBLTpListActivity$3$2;
.super Ljava/lang/Object;
.source "TBLTpListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLTpListActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/TBLTpListActivity$3;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLTpListActivity$3;I)V
    .locals 0

    .line 191
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$3$2;->this$1:Ltw/edu/kmu/act/TBLTpListActivity$3;

    iput p2, p0, Ltw/edu/kmu/act/TBLTpListActivity$3$2;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 195
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$3$2;->this$1:Ltw/edu/kmu/act/TBLTpListActivity$3;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLTpListActivity;->access$300(Ltw/edu/kmu/act/TBLTpListActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget p2, p0, Ltw/edu/kmu/act/TBLTpListActivity$3$2;->val$idx:I

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 196
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$3$2;->this$1:Ltw/edu/kmu/act/TBLTpListActivity$3;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    const-class v1, Ltw/edu/kmu/act/TBLActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "GRAT"

    const-string v1, "qutype"

    .line 197
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u61c9\u7528\u6d3b\u52d5"

    const-string v1, "qutype"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$3$2;->this$1:Ltw/edu/kmu/act/TBLTpListActivity$3;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    const-class v1, Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v0, "dataMap"

    .line 205
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 206
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$3$2;->this$1:Ltw/edu/kmu/act/TBLTpListActivity$3;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLTpListActivity$3;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/TBLTpListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
