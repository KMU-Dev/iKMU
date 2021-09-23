.class Ltw/edu/kmu/act/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/GalleryActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/GalleryActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$1;->this$0:Ltw/edu/kmu/act/GalleryActivity;

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

    .line 138
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$1;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/GalleryActivity;->access$000(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    rem-int/2addr p3, p1

    .line 139
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$1;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/GalleryActivity;->access$000(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 140
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object p4, p0, Ltw/edu/kmu/act/GalleryActivity$1;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-virtual {p4}, Ltw/edu/kmu/act/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    const-class p5, Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "imgFileName"

    const-string p5, "pic"

    .line 141
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isLoaded"

    .line 142
    iget-object p4, p0, Ltw/edu/kmu/act/GalleryActivity$1;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p4}, Ltw/edu/kmu/act/GalleryActivity;->access$100(Ltw/edu/kmu/act/GalleryActivity;)[Z

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    const-string p1, "isLoadedIndex"

    .line 143
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "serverDataList"

    .line 144
    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$1;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/GalleryActivity;->access$000(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$1;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ltw/edu/kmu/act/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
