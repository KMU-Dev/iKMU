.class Ltw/edu/kmu/act/WacTeaFun3Activity$3;
.super Ljava/lang/Object;
.source "WacTeaFun3Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/WacTeaFun3Activity;->initBtnFunction()V
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

    .line 147
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 152
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$300(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "#FFCC66"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 153
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$200(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "#555555"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 154
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$400(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "#555555"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 155
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$502(Ltw/edu/kmu/act/WacTeaFun3Activity;I)I

    .line 156
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$600(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->access$700(Ltw/edu/kmu/act/WacTeaFun3Activity;IZ)V

    return-void
.end method
