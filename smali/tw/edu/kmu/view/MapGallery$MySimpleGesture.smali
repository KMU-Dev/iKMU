.class Ltw/edu/kmu/view/MapGallery$MySimpleGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MapGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/view/MapGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySimpleGesture"
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/view/MapGallery;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/view/MapGallery;)V
    .locals 0

    .line 221
    iput-object p1, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 224
    iget-object p1, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    invoke-virtual {p1}, Ltw/edu/kmu/view/MapGallery;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 225
    instance-of v0, p1, Ltw/edu/kmu/view/MapImageView;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    check-cast p1, Ltw/edu/kmu/view/MapImageView;

    invoke-static {v0, p1}, Ltw/edu/kmu/view/MapGallery;->access$002(Ltw/edu/kmu/view/MapGallery;Ltw/edu/kmu/view/MapImageView;)Ltw/edu/kmu/view/MapImageView;

    .line 227
    iget-object p1, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    invoke-static {p1}, Ltw/edu/kmu/view/MapGallery;->access$000(Ltw/edu/kmu/view/MapGallery;)Ltw/edu/kmu/view/MapImageView;

    move-result-object p1

    invoke-virtual {p1}, Ltw/edu/kmu/view/MapImageView;->getScale()F

    move-result p1

    iget-object v0, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    invoke-static {v0}, Ltw/edu/kmu/view/MapGallery;->access$000(Ltw/edu/kmu/view/MapGallery;)Ltw/edu/kmu/view/MapImageView;

    move-result-object v0

    invoke-virtual {v0}, Ltw/edu/kmu/view/MapImageView;->getScaleRate()F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 228
    iget-object p1, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    invoke-static {p1}, Ltw/edu/kmu/view/MapGallery;->access$000(Ltw/edu/kmu/view/MapGallery;)Ltw/edu/kmu/view/MapImageView;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    invoke-static {v0}, Ltw/edu/kmu/view/MapGallery;->access$000(Ltw/edu/kmu/view/MapGallery;)Ltw/edu/kmu/view/MapImageView;

    move-result-object v0

    invoke-virtual {v0}, Ltw/edu/kmu/view/MapImageView;->getScaleRate()F

    move-result v0

    iget-object v2, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    iget v2, v2, Ltw/edu/kmu/view/MapGallery;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    iget v3, v3, Ltw/edu/kmu/view/MapGallery;->screenHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Ltw/edu/kmu/view/MapImageView;->zoomTo(FFFF)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    invoke-static {p1}, Ltw/edu/kmu/view/MapGallery;->access$000(Ltw/edu/kmu/view/MapGallery;)Ltw/edu/kmu/view/MapImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    iget v2, v2, Ltw/edu/kmu/view/MapGallery;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Ltw/edu/kmu/view/MapGallery$MySimpleGesture;->this$0:Ltw/edu/kmu/view/MapGallery;

    iget v3, v3, Ltw/edu/kmu/view/MapGallery;->screenHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Ltw/edu/kmu/view/MapImageView;->zoomTo(FFFF)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
