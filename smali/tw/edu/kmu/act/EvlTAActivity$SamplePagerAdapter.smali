.class Ltw/edu/kmu/act/EvlTAActivity$SamplePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EvlTAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/EvlTAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamplePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlTAActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/EvlTAActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity$SamplePagerAdapter;->this$0:Ltw/edu/kmu/act/EvlTAActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/EvlTAActivity;Ltw/edu/kmu/act/EvlTAActivity$1;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/EvlTAActivity$SamplePagerAdapter;-><init>(Ltw/edu/kmu/act/EvlTAActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p3, Landroid/view/View;

    .line 192
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 173
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity$SamplePagerAdapter;->this$0:Ltw/edu/kmu/act/EvlTAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlTAActivity;->access$400(Ltw/edu/kmu/act/EvlTAActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 183
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity$SamplePagerAdapter;->this$0:Ltw/edu/kmu/act/EvlTAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlTAActivity;->access$400(Ltw/edu/kmu/act/EvlTAActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity$SamplePagerAdapter;->this$0:Ltw/edu/kmu/act/EvlTAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlTAActivity;->access$400(Ltw/edu/kmu/act/EvlTAActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
