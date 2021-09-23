.class Ltw/edu/kmu/act/EvlQuestionActivity$15;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlQuestionActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V
    .locals 0

    .line 1292
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$15;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1297
    iget-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$15;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 1298
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x0

    return p1
.end method
