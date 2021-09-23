.class public Ltw/edu/kmu/act/PoiContentActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "PoiContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/PoiContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private images:[Landroid/graphics/Bitmap;

.field final synthetic this$0:Ltw/edu/kmu/act/PoiContentActivity;


# direct methods
.method public constructor <init>(Ltw/edu/kmu/act/PoiContentActivity;Landroid/content/Context;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 92
    iput-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 93
    iput-object p2, p0, Ltw/edu/kmu/act/PoiContentActivity$ImageAdapter;->context:Landroid/content/Context;

    .line 94
    iput-object p3, p0, Ltw/edu/kmu/act/PoiContentActivity$ImageAdapter;->images:[Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity$ImageAdapter;->images:[Landroid/graphics/Bitmap;

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
    .locals 1

    .line 115
    iget-object p2, p0, Ltw/edu/kmu/act/PoiContentActivity$ImageAdapter;->images:[Landroid/graphics/Bitmap;

    aget-object p1, p2, p1

    .line 119
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Ltw/edu/kmu/act/PoiContentActivity$ImageAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance p3, Landroid/widget/Gallery$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
