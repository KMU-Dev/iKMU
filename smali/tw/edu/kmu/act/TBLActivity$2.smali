.class Ltw/edu/kmu/act/TBLActivity$2;
.super Ljava/lang/Object;
.source "TBLActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLActivity;->buttonEffect(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$2;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p2, 0x7f0700f0

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    check-cast p1, Landroid/widget/Button;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    const p2, 0x7f0700f1

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    move-object p2, p1

    check-cast p2, Landroid/widget/Button;

    const v0, -0xffff01

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
