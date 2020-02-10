.class Ltw/edu/kmu/act/CalendarQueryActivity$1;
.super Ljava/lang/Object;
.source "CalendarQueryActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/CalendarQueryActivity;->initSearchText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/CalendarQueryActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/CalendarQueryActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity$1;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    :cond_0
    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    if-nez p2, :cond_3

    .line 101
    :cond_1
    iget-object p2, p0, Ltw/edu/kmu/act/CalendarQueryActivity$1;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/CalendarQueryActivity;->access$100(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 105
    new-instance p2, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;

    iget-object v2, p0, Ltw/edu/kmu/act/CalendarQueryActivity$1;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-direct {p2, v2, v1}, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity;Ltw/edu/kmu/act/CalendarQueryActivity$1;)V

    .line 106
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p1

    invoke-virtual {p2, v0}, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    iget-object p2, p0, Ltw/edu/kmu/act/CalendarQueryActivity$1;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/CalendarQueryActivity;->access$200(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    iget-object p3, p0, Ltw/edu/kmu/act/CalendarQueryActivity$1;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/CalendarQueryActivity;->access$100(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 112
    :cond_2
    iget-object p2, p0, Ltw/edu/kmu/act/CalendarQueryActivity$1;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/CalendarQueryActivity;->access$200(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    iget-object v2, p0, Ltw/edu/kmu/act/CalendarQueryActivity$1;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/CalendarQueryActivity;->access$100(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 116
    new-instance p2, Ltw/edu/kmu/act/CalendarQueryActivity$GetKeyWordData;

    iget-object v2, p0, Ltw/edu/kmu/act/CalendarQueryActivity$1;->this$0:Ltw/edu/kmu/act/CalendarQueryActivity;

    invoke-direct {p2, v2, v1}, Ltw/edu/kmu/act/CalendarQueryActivity$GetKeyWordData;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity;Ltw/edu/kmu/act/CalendarQueryActivity$1;)V

    .line 117
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p1

    invoke-virtual {p2, v0}, Ltw/edu/kmu/act/CalendarQueryActivity$GetKeyWordData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    return p1
.end method
