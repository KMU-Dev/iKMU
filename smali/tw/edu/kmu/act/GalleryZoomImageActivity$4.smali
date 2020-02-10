.class Ltw/edu/kmu/act/GalleryZoomImageActivity$4;
.super Ljava/lang/Object;
.source "GalleryZoomImageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;)V
    .locals 0

    .line 280
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$4;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 285
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$4;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$300(Ltw/edu/kmu/act/GalleryZoomImageActivity;)V

    .line 286
    invoke-static {}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "select id:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
