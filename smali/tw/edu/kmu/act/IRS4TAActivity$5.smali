.class Ltw/edu/kmu/act/IRS4TAActivity$5;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRS4TAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 0

    .line 444
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$5;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 462
    :pswitch_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$5;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    const-string p2, "99"

    invoke-static {p1, p2}, Ltw/edu/kmu/act/IRS4TAActivity;->access$202(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$5;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    const-string p2, "2"

    invoke-static {p1, p2}, Ltw/edu/kmu/act/IRS4TAActivity;->access$202(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 452
    :pswitch_2
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$5;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    const-string p2, "1"

    invoke-static {p1, p2}, Ltw/edu/kmu/act/IRS4TAActivity;->access$202(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f08008c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
