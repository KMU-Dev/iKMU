.class Ltw/edu/kmu/act/NewsActivity$1;
.super Ljava/lang/Object;
.source "NewsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/NewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/NewsActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/NewsActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 106
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Ltw/edu/kmu/act/NewsActivity;->shouldLoadData:Z

    .line 107
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iput-boolean v0, p1, Ltw/edu/kmu/act/NewsActivity;->shouldRefresh:Z

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 110
    iget-object p2, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iput-boolean p1, p2, Ltw/edu/kmu/act/NewsActivity;->shouldRefresh:Z

    goto :goto_0

    :cond_0
    add-int/2addr p2, p3

    if-ne p2, p4, :cond_2

    .line 114
    iget-object p2, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/NewsActivity;->access$000(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getCount()I

    move-result p2

    iget-object p3, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/NewsActivity;->access$100(Ltw/edu/kmu/act/NewsActivity;)I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 115
    iget-object p2, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iput-boolean p1, p2, Ltw/edu/kmu/act/NewsActivity;->shouldLoadData:Z

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$200(Ltw/edu/kmu/act/NewsActivity;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$000(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/NewsActivity;->access$200(Ltw/edu/kmu/act/NewsActivity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 120
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iput-boolean v0, p1, Ltw/edu/kmu/act/NewsActivity;->shouldRefresh:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 130
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iget-boolean p1, p1, Ltw/edu/kmu/act/NewsActivity;->shouldRefresh:Z

    .line 137
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iget-boolean p1, p1, Ltw/edu/kmu/act/NewsActivity;->shouldLoadData:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iget-boolean p1, p1, Ltw/edu/kmu/act/NewsActivity;->isLoadingData:Z

    if-nez p1, :cond_1

    .line 140
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/NewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 141
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Ltw/edu/kmu/act/NewsActivity;->isLoadingData:Z

    .line 142
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$308(Ltw/edu/kmu/act/NewsActivity;)I

    .line 143
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/NewsActivity;->access$000(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/NewsActivity;->access$402(Ltw/edu/kmu/act/NewsActivity;I)I

    .line 144
    new-instance p1, Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;

    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity$1;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;-><init>(Ltw/edu/kmu/act/NewsActivity;Ltw/edu/kmu/act/NewsActivity$1;)V

    .line 145
    new-array p2, p2, [Ljava/lang/Integer;

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
