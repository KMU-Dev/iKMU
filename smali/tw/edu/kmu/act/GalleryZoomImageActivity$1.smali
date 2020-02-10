.class Ltw/edu/kmu/act/GalleryZoomImageActivity$1;
.super Ljava/lang/Object;
.source "GalleryZoomImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/GalleryZoomImageActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 135
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    const-class v1, Ltw/edu/kmu/act/GalleryGridViewActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "serverDataList"

    .line 136
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$000(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "isLoadedIndex"

    .line 137
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$100(Ltw/edu/kmu/act/GalleryZoomImageActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$000(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$000(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->finish()V

    :cond_0
    return-void
.end method
