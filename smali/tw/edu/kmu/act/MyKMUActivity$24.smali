.class Ltw/edu/kmu/act/MyKMUActivity$24;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Lcom/estimote/sdk/BeaconManager$MonitoringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->connectToService()V
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

    .line 842
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$24;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnteredRegion(Lcom/estimote/sdk/Region;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estimote/sdk/Region;",
            "Ljava/util/List<",
            "Lcom/estimote/sdk/Beacon;",
            ">;)V"
        }
    .end annotation

    .line 861
    invoke-static {}, Ltw/edu/kmu/act/MyKMUActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entered region is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/estimote/sdk/Beacon;

    .line 866
    invoke-static {}, Ltw/edu/kmu/act/MyKMUActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beacon is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$24;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/MyKMUActivity;->access$700(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/vo/ConfigData;

    move-result-object v0

    iget-object v0, v0, Ltw/edu/kmu/vo/ConfigData;->beaconDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "major"

    .line 868
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/estimote/sdk/Beacon;->getMajor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "minor"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/estimote/sdk/Beacon;->getMinor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pushID"

    .line 869
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    .line 870
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 871
    invoke-static {}, Ltw/edu/kmu/act/MyKMUActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pushID is empty and beacon is  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 874
    :cond_2
    iget-object v2, p0, Ltw/edu/kmu/act/MyKMUActivity$24;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v2

    iget-boolean v2, v2, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    if-eqz v2, :cond_3

    .line 875
    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;

    iget-object v3, p0, Ltw/edu/kmu/act/MyKMUActivity$24;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Ltw/edu/kmu/act/MyKMUActivity$1;)V

    const/4 v3, 0x1

    .line 876
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 880
    :cond_3
    iget-object v2, p0, Ltw/edu/kmu/act/MyKMUActivity$24;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/MyKMUActivity;->access$900(Ltw/edu/kmu/act/MyKMUActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    invoke-static {}, Ltw/edu/kmu/act/MyKMUActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushID is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$24;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/MyKMUActivity;->access$1100(Ltw/edu/kmu/act/MyKMUActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$24;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/MyKMUActivity;->access$1100(Ltw/edu/kmu/act/MyKMUActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 884
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$24;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/MyKMUActivity;->access$1100(Ltw/edu/kmu/act/MyKMUActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f08011b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 885
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;

    .line 886
    invoke-virtual {v1}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltw/edu/kmu/view/TreeElement;

    const-string v4, ""

    .line 887
    invoke-virtual {v3}, Ltw/edu/kmu/view/TreeElement;->getClassRoom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Ltw/edu/kmu/act/MyKMUActivity$24;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v4}, Ltw/edu/kmu/act/MyKMUActivity;->access$900(Ltw/edu/kmu/act/MyKMUActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3}, Ltw/edu/kmu/view/TreeElement;->getClassRoom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ""

    .line 888
    invoke-virtual {v3, v4}, Ltw/edu/kmu/view/TreeElement;->setClassRoom(Ljava/lang/String;)V

    goto :goto_1

    .line 891
    :cond_5
    invoke-virtual {v1}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public onExitedRegion(Lcom/estimote/sdk/Region;)V
    .locals 2

    .line 852
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$24;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/MyKMUActivity;->access$900(Ltw/edu/kmu/act/MyKMUActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
