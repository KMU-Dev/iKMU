.class Ltw/edu/kmu/act/GalleryListActivity$1;
.super Ljava/lang/Object;
.source "GalleryListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/GalleryListActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/GalleryListActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/GalleryListActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryListActivity$1;->this$0:Ltw/edu/kmu/act/GalleryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 92
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/GalleryListActivity$1;->this$0:Ltw/edu/kmu/act/GalleryListActivity;

    invoke-virtual {p2}, Ltw/edu/kmu/act/GalleryListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class p4, Ltw/edu/kmu/act/GalleryActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryListActivity$1;->this$0:Ltw/edu/kmu/act/GalleryListActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/GalleryListActivity;->access$100(Ltw/edu/kmu/act/GalleryListActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 95
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 96
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 97
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 100
    :cond_0
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryListActivity$1;->this$0:Ltw/edu/kmu/act/GalleryListActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/GalleryListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
