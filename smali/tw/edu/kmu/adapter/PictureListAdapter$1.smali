.class Ltw/edu/kmu/adapter/PictureListAdapter$1;
.super Ljava/lang/Object;
.source "PictureListAdapter.java"

# interfaces
.implements Ltw/edu/kmu/tool/AsyncImageFileLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/adapter/PictureListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/adapter/PictureListAdapter;


# direct methods
.method constructor <init>(Ltw/edu/kmu/adapter/PictureListAdapter;)V
    .locals 0

    .line 101
    iput-object p1, p0, Ltw/edu/kmu/adapter/PictureListAdapter$1;->this$0:Ltw/edu/kmu/adapter/PictureListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageCallback(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Ltw/edu/kmu/adapter/PictureListAdapter$1;->this$0:Ltw/edu/kmu/adapter/PictureListAdapter;

    iget-object v0, v0, Ltw/edu/kmu/adapter/PictureListAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
