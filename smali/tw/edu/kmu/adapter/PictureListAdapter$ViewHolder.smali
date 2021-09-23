.class Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PictureListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/adapter/PictureListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Ltw/edu/kmu/adapter/PictureListAdapter;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/adapter/PictureListAdapter;)V
    .locals 0

    .line 120
    iput-object p1, p0, Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;->this$0:Ltw/edu/kmu/adapter/PictureListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/adapter/PictureListAdapter;Ltw/edu/kmu/adapter/PictureListAdapter$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/PictureListAdapter;)V

    return-void
.end method
