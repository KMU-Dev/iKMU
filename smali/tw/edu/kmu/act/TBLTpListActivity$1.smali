.class Ltw/edu/kmu/act/TBLTpListActivity$1;
.super Ljava/lang/Object;
.source "TBLTpListActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLTpListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLTpListActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLTpListActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity$1;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 84
    new-instance v0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity$1;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;Ltw/edu/kmu/act/TBLTpListActivity$1;)V

    const/4 v1, 0x0

    .line 85
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity$1;->this$0:Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/TBLTpListActivity;->access$100(Ltw/edu/kmu/act/TBLTpListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
