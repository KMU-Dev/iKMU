.class Ltw/edu/kmu/view/ZoomImageBox$1;
.super Ljava/lang/Object;
.source "ZoomImageBox.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/view/ZoomImageBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field baseValue:F

.field originalScale:F

.field final synthetic this$0:Ltw/edu/kmu/view/ZoomImageBox;


# direct methods
.method constructor <init>(Ltw/edu/kmu/view/ZoomImageBox;)V
    .locals 0

    .line 40
    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->this$0:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 47
    iget-object p1, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->this$0:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-virtual {p1}, Ltw/edu/kmu/view/ZoomImageBox;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 48
    instance-of v0, p1, Ltw/edu/kmu/view/ZoomImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->this$0:Ltw/edu/kmu/view/ZoomImageBox;

    check-cast p1, Ltw/edu/kmu/view/ZoomImageView;

    invoke-static {v0, p1}, Ltw/edu/kmu/view/ZoomImageBox;->access$002(Ltw/edu/kmu/view/ZoomImageBox;Ltw/edu/kmu/view/ZoomImageView;)Ltw/edu/kmu/view/ZoomImageView;

    .line 50
    iget-object p1, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->this$0:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-static {p1}, Ltw/edu/kmu/view/ZoomImageBox;->access$000(Ltw/edu/kmu/view/ZoomImageBox;)Ltw/edu/kmu/view/ZoomImageView;

    move-result-object p1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/view/ZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    iget-object p1, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->this$0:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-static {p1}, Ltw/edu/kmu/view/ZoomImageBox;->access$000(Ltw/edu/kmu/view/ZoomImageBox;)Ltw/edu/kmu/view/ZoomImageView;

    move-result-object p1

    iget-boolean p1, p1, Ltw/edu/kmu/view/ZoomImageView;->isEanbleGPS:Z

    if-eqz p1, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 56
    iput v0, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->baseValue:F

    .line 57
    iget-object p1, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->this$0:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-static {p1}, Ltw/edu/kmu/view/ZoomImageBox;->access$000(Ltw/edu/kmu/view/ZoomImageBox;)Ltw/edu/kmu/view/ZoomImageView;

    move-result-object p1

    invoke-virtual {p1}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result p1

    iput p1, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->originalScale:F

    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr p1, v3

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v4, p1, p1

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 65
    iget v5, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->baseValue:F

    cmpl-float v0, v5, v0

    if-nez v0, :cond_2

    .line 66
    iput v4, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->baseValue:F

    goto :goto_0

    .line 68
    :cond_2
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->baseValue:F

    div-float/2addr v4, v0

    .line 70
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->this$0:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-static {v0}, Ltw/edu/kmu/view/ZoomImageBox;->access$000(Ltw/edu/kmu/view/ZoomImageBox;)Ltw/edu/kmu/view/ZoomImageView;

    move-result-object v0

    iget v5, p0, Ltw/edu/kmu/view/ZoomImageBox$1;->originalScale:F

    mul-float v5, v5, v4

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr p1, v4

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr v3, p2

    invoke-virtual {v0, v5, p1, v3}, Ltw/edu/kmu/view/ZoomImageView;->zoomTo(FFF)V

    :cond_3
    :goto_0
    return v1
.end method
