.class Ltw/edu/kmu/act/IRSRecordActivity$2;
.super Ljava/lang/Object;
.source "IRSRecordActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSRecordActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSRecordActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSRecordActivity;)V
    .locals 0

    .line 191
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$2;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5

    .line 195
    invoke-static {}, Ltw/edu/kmu/act/IRSRecordActivity;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tab pos is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$2;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$900(Ltw/edu/kmu/act/IRSRecordActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 198
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f080125

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$2;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1000(Ltw/edu/kmu/act/IRSRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 200
    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$2;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-static {v0, p1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1102(Ltw/edu/kmu/act/IRSRecordActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 201
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$2;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    const-string v0, "1"

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$402(Ltw/edu/kmu/act/IRSRecordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    new-instance p1, Ltw/edu/kmu/act/IRSRecordActivity$GetQAData;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$2;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {p1, v0, v2}, Ltw/edu/kmu/act/IRSRecordActivity$GetQAData;-><init>(Ltw/edu/kmu/act/IRSRecordActivity;Ltw/edu/kmu/act/IRSRecordActivity$1;)V

    .line 203
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRSRecordActivity$GetQAData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 206
    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$2;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1000(Ltw/edu/kmu/act/IRSRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 207
    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$2;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-static {v0, p1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1102(Ltw/edu/kmu/act/IRSRecordActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 208
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$2;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    const-string v0, "2"

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$402(Ltw/edu/kmu/act/IRSRecordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    new-instance p1, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$2;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {p1, v0, v2}, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;-><init>(Ltw/edu/kmu/act/IRSRecordActivity;Ltw/edu/kmu/act/IRSRecordActivity$1;)V

    .line 210
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
