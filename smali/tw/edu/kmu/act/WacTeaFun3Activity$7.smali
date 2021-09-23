.class Ltw/edu/kmu/act/WacTeaFun3Activity$7;
.super Ljava/lang/Object;
.source "WacTeaFun3Activity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/WacTeaFun3Activity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/WacTeaFun3Activity;)V
    .locals 0

    .line 317
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$7;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3

    .line 321
    invoke-static {}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tab pos is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$7;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$600(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 324
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$7;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$700(Ltw/edu/kmu/act/WacTeaFun3Activity;IZ)V

    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
