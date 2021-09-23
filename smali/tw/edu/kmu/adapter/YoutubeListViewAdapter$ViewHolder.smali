.class Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "YoutubeListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/adapter/YoutubeListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field speaker:Landroid/widget/TextView;

.field final synthetic this$0:Ltw/edu/kmu/adapter/YoutubeListViewAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/adapter/YoutubeListViewAdapter;)V
    .locals 0

    .line 78
    iput-object p1, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;->this$0:Ltw/edu/kmu/adapter/YoutubeListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/adapter/YoutubeListViewAdapter;Ltw/edu/kmu/adapter/YoutubeListViewAdapter$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/YoutubeListViewAdapter;)V

    return-void
.end method
