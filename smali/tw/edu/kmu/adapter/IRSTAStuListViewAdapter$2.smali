.class Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$2;
.super Ljava/lang/Object;
.source "IRSTAStuListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;Ljava/util/HashMap;)V
    .locals 0

    .line 115
    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$2;->this$0:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;

    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$2;->val$map:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 120
    iget-object p1, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$2;->this$0:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;

    invoke-static {p1}, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->access$200(Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;)Ltw/edu/kmu/act/IRS4TAActivity;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$2;->val$map:Ljava/util/HashMap;

    const-string v1, "seqno"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$2;->val$map:Ljava/util/HashMap;

    const-string v2, "seqDesc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ltw/edu/kmu/act/IRS4TAActivity;->setSeqNo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
