.class Ltw/edu/kmu/view/KScalableImageView$1;
.super Ljava/lang/Object;
.source "KScalableImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/view/KScalableImageView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/view/KScalableImageView;


# direct methods
.method constructor <init>(Ltw/edu/kmu/view/KScalableImageView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Ltw/edu/kmu/view/KScalableImageView$1;->this$0:Ltw/edu/kmu/view/KScalableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 124
    invoke-static {}, Ltw/edu/kmu/view/KScalableImageView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7e2e\u653e\u4e2d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView$1;->this$0:Ltw/edu/kmu/view/KScalableImageView;

    iget-object v1, p0, Ltw/edu/kmu/view/KScalableImageView$1;->this$0:Ltw/edu/kmu/view/KScalableImageView;

    invoke-static {v1}, Ltw/edu/kmu/view/KScalableImageView;->access$100(Ltw/edu/kmu/view/KScalableImageView;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float v1, v1, p1

    invoke-static {v0, v1}, Ltw/edu/kmu/view/KScalableImageView;->access$102(Ltw/edu/kmu/view/KScalableImageView;F)F

    .line 126
    iget-object p1, p0, Ltw/edu/kmu/view/KScalableImageView$1;->this$0:Ltw/edu/kmu/view/KScalableImageView;

    invoke-virtual {p1}, Ltw/edu/kmu/view/KScalableImageView;->invalidate()V

    .line 127
    iget-object p1, p0, Ltw/edu/kmu/view/KScalableImageView$1;->this$0:Ltw/edu/kmu/view/KScalableImageView;

    invoke-static {p1}, Ltw/edu/kmu/view/KScalableImageView;->access$200(Ltw/edu/kmu/view/KScalableImageView;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 128
    iget-object v1, p0, Ltw/edu/kmu/view/KScalableImageView$1;->this$0:Ltw/edu/kmu/view/KScalableImageView;

    invoke-static {v1}, Ltw/edu/kmu/view/KScalableImageView;->access$200(Ltw/edu/kmu/view/KScalableImageView;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 129
    invoke-static {}, Ltw/edu/kmu/view/KScalableImageView;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7b2c\u4e8c\u6307\u4f4d\u7f6e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 117
    invoke-static {}, Ltw/edu/kmu/view/KScalableImageView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u958b\u59cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Ltw/edu/kmu/view/KScalableImageView$1;->this$0:Ltw/edu/kmu/view/KScalableImageView;

    invoke-virtual {p1}, Ltw/edu/kmu/view/KScalableImageView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    .line 109
    invoke-static {}, Ltw/edu/kmu/view/KScalableImageView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7d50\u675f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView$1;->this$0:Ltw/edu/kmu/view/KScalableImageView;

    iget-object v1, p0, Ltw/edu/kmu/view/KScalableImageView$1;->this$0:Ltw/edu/kmu/view/KScalableImageView;

    invoke-static {v1}, Ltw/edu/kmu/view/KScalableImageView;->access$100(Ltw/edu/kmu/view/KScalableImageView;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float v1, v1, p1

    invoke-static {v0, v1}, Ltw/edu/kmu/view/KScalableImageView;->access$102(Ltw/edu/kmu/view/KScalableImageView;F)F

    .line 111
    iget-object p1, p0, Ltw/edu/kmu/view/KScalableImageView$1;->this$0:Ltw/edu/kmu/view/KScalableImageView;

    invoke-virtual {p1}, Ltw/edu/kmu/view/KScalableImageView;->invalidate()V

    return-void
.end method
