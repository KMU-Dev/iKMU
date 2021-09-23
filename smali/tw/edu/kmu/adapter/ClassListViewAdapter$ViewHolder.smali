.class Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ClassListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/adapter/ClassListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Ltw/edu/kmu/adapter/ClassListViewAdapter;

.field title1:Landroid/widget/TextView;

.field title2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/adapter/ClassListViewAdapter;)V
    .locals 0

    .line 75
    iput-object p1, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;->this$0:Ltw/edu/kmu/adapter/ClassListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/adapter/ClassListViewAdapter;Ltw/edu/kmu/adapter/ClassListViewAdapter$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/ClassListViewAdapter;)V

    return-void
.end method
