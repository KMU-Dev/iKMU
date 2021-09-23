.class Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1;
.super Ljava/lang/Object;
.source "SeatBookingView2L4TimeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 98
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;->access$100(Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 100
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u9810\u7d04\u6642\u6bb5\u4e0d\u53ef\u70ba\u7a7a\u767d"

    .line 101
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u8acb\u9078\u64c7\u9810\u7d04\u6642\u6bb5"

    .line 102
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u78ba\u5b9a"

    new-instance v1, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1$1;-><init>(Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1;)V

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;

    const-string v0, "BookAdd"

    invoke-static {p1, v0}, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;->access$202(Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 114
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$GetServerDataInfo;

    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$1;)V

    const/4 v0, 0x1

    .line 115
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
