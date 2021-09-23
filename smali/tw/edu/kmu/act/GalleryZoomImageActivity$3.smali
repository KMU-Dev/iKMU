.class Ltw/edu/kmu/act/GalleryZoomImageActivity$3;
.super Ljava/lang/Object;
.source "GalleryZoomImageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/GalleryZoomImageActivity;->setGalleryImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;Landroid/view/GestureDetector;)V
    .locals 0

    .line 260
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$3;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$3;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 265
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$3;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
