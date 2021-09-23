.class Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryZoomImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/GalleryZoomImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;


# direct methods
.method public constructor <init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;Landroid/content/Context;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 493
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 494
    iput-object p2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 500
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$000(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 519
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 521
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$000(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 523
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$500(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 527
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$000(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    const-string v0, "pic"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$600(Ltw/edu/kmu/act/GalleryZoomImageActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 528
    iget-object p3, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$500(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ljava/util/HashMap;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_0
    iget-object p3, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {p3, p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$700(Ltw/edu/kmu/act/GalleryZoomImageActivity;I)V

    .line 533
    new-instance p1, Ltw/edu/kmu/view/ZoomImageView;

    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getHeight()I

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/view/ZoomImageView;-><init>(Landroid/content/Context;IIII)V

    .line 534
    new-instance p3, Landroid/widget/Gallery$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3}, Ltw/edu/kmu/view/ZoomImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    invoke-virtual {p1, p2}, Ltw/edu/kmu/view/ZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 536
    iget-object p3, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result p3

    const/4 v0, 0x2

    mul-int/lit8 p3, p3, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr p3, v1

    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-le p2, v0, :cond_1

    int-to-float p2, p2

    .line 538
    invoke-virtual {p1, p2}, Ltw/edu/kmu/view/ZoomImageView;->setMMaxZoom(F)V

    .line 540
    :cond_1
    invoke-virtual {p1}, Ltw/edu/kmu/view/ZoomImageView;->getScaleRate()F

    move-result p2

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p1, p2, p3, v1, v0}, Ltw/edu/kmu/view/ZoomImageView;->zoomTo(FFFF)V

    return-object p1
.end method
