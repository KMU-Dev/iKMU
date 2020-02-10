.class Ltw/edu/kmu/act/MyScheduledClassDetailActivity$1;
.super Ljava/lang/Object;
.source "MyScheduledClassDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyScheduledClassDetailActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MyScheduledClassDetailActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity$1;->this$0:Ltw/edu/kmu/act/MyScheduledClassDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 144
    iget-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassDetailActivity$1;->this$0:Ltw/edu/kmu/act/MyScheduledClassDetailActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/MyScheduledClassDetailActivity;->finish()V

    return-void
.end method
