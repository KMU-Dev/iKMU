.class Ltw/edu/kmu/act/GalleryZoomImageActivity$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GalleryZoomImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/GalleryZoomImageActivity;
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

    .line 174
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$2;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 178
    invoke-static {}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDoubleTap:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 185
    invoke-static {}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$200()Ljava/lang/String;

    move-result-object p4

    const-string v0, "onFling:"

    invoke-static {p4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    .line 189
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p4

    if-lez p2, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    .line 191
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$2;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->scrollToDesc(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 202
    invoke-static {}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLongPress:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 208
    invoke-static {}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapConfirmed and y is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
