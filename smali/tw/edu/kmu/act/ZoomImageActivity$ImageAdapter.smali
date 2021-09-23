.class Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZoomImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/ZoomImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private images:[Landroid/graphics/Bitmap;

.field final synthetic this$0:Ltw/edu/kmu/act/ZoomImageActivity;


# direct methods
.method public constructor <init>(Ltw/edu/kmu/act/ZoomImageActivity;Landroid/content/Context;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 291
    iput-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 292
    iput-object p2, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->context:Landroid/content/Context;

    .line 293
    iput-object p3, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->images:[Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 298
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->images:[Landroid/graphics/Bitmap;

    array-length v0, v0

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

    .line 314
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 315
    iget-object p2, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->images:[Landroid/graphics/Bitmap;

    aget-object p1, p2, p1

    .line 316
    new-instance p2, Ltw/edu/kmu/view/ZoomImageView;

    iget-object v1, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object p3, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/ZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget-object p3, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/ZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getHeight()I

    move-result v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/view/ZoomImageView;-><init>(Landroid/content/Context;IIII)V

    .line 317
    new-instance p3, Landroid/widget/Gallery$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Ltw/edu/kmu/view/ZoomImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    invoke-virtual {p2, p1}, Ltw/edu/kmu/view/ZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    iget-object p3, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/ZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result p3

    const/4 v0, 0x2

    mul-int/lit8 p3, p3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr p3, v1

    iget-object v1, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/ZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-le p1, v0, :cond_0

    int-to-float p1, p1

    .line 321
    invoke-virtual {p2, p1}, Ltw/edu/kmu/view/ZoomImageView;->setMMaxZoom(F)V

    .line 323
    :cond_0
    invoke-virtual {p2}, Ltw/edu/kmu/view/ZoomImageView;->getScaleRate()F

    move-result p1

    iget-object p3, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/ZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget-object v1, p0, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/ZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p2, p1, p3, v1, v0}, Ltw/edu/kmu/view/ZoomImageView;->zoomTo(FFFF)V

    return-object p2
.end method
