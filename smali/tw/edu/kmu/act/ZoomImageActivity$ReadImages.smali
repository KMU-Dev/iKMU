.class Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;
.super Landroid/os/AsyncTask;
.source "ZoomImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/ZoomImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadImages"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_FROM_NETWORK:I = 0x3

.field private static final IMAGE_FROM_RESOURCE:I = 0x2

.field private static final IMAGE_INIT:I = 0x0

.field private static final IMGAE_FROM_SDCARD:I = 0x1


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ZoomImageActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/ZoomImageActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/ZoomImageActivity;Ltw/edu/kmu/act/ZoomImageActivity$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;-><init>(Ltw/edu/kmu/act/ZoomImageActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    .line 164
    iget-object v0, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$500(Ltw/edu/kmu/act/ZoomImageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "imgFileName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-object v0, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/graphics/Bitmap;

    invoke-static {v0, v4}, Ltw/edu/kmu/act/ZoomImageActivity;->access$602(Ltw/edu/kmu/act/ZoomImageActivity;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$300(Ltw/edu/kmu/act/ZoomImageActivity;)[Z

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    const-string v0, "(?i)\\.(jpg|png|gif|jpeg)"

    const-string v6, ""

    .line 170
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v6, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-virtual {v6}, Ltw/edu/kmu/act/ZoomImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "drawable"

    iget-object v8, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-virtual {v8}, Ltw/edu/kmu/act/ZoomImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v6, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-virtual {v6}, Ltw/edu/kmu/act/ZoomImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 174
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    iput-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    iget-object v7, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v7, v2}, Ltw/edu/kmu/act/ZoomImageActivity;->access$700(Ltw/edu/kmu/act/ZoomImageActivity;Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 177
    iput-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 178
    invoke-static {v0, v4, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v6, 0x2

    const-string v7, "Gallery\u5716\u6a94\u4f86\u6e90"

    const-string v8, "Resource\u5716\u7247\u6a94"

    .line 180
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v4

    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_2

    .line 185
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 186
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$800(Ltw/edu/kmu/act/ZoomImageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 191
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 194
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 195
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 196
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 197
    iget-object v9, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v9, v2}, Ltw/edu/kmu/act/ZoomImageActivity;->access$700(Ltw/edu/kmu/act/ZoomImageActivity;Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 198
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 199
    invoke-static {v8, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 201
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "Gallery\u5716\u6a94\u4f86\u6e90"

    const-string v6, "Local\u7aef\u66ab\u5b58\u5716\u7247\u6a94"

    .line 203
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v9

    const/4 v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v7, v9

    const/4 v6, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v7, v9

    goto :goto_1

    :catch_2
    move-exception v0

    .line 205
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    if-nez v6, :cond_5

    .line 213
    iget-object v0, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0c001c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    :try_start_3
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const v6, 0xea60

    .line 218
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 219
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 220
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 222
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 223
    invoke-static {}, Ltw/edu/kmu/act/ZoomImageActivity;->access$900()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6a94\u6848\u5927\u5c0f:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 226
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v7}, Ltw/edu/kmu/act/ZoomImageActivity;->access$800(Ltw/edu/kmu/act/ZoomImageActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 228
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 230
    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x800

    .line 233
    new-array v9, v9, [B

    const/4 v10, 0x0

    .line 236
    :goto_3
    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 237
    invoke-virtual {v8, v9, v5, v11}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v10, v11

    .line 240
    invoke-static {}, Ltw/edu/kmu/act/ZoomImageActivity;->access$900()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6a94\u6848\u9032\u5ea6:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    int-to-double v11, v10

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 241
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    int-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    .line 242
    :try_start_4
    iget-object v13, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    const-wide v14, 0x4076800000000000L    # 360.0

    mul-double v14, v14, v11

    double-to-int v14, v14

    invoke-static {v13, v14}, Ltw/edu/kmu/act/ZoomImageActivity;->access$1002(Ltw/edu/kmu/act/ZoomImageActivity;I)I

    .line 243
    iget-object v13, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v13}, Ltw/edu/kmu/act/ZoomImageActivity;->access$200(Ltw/edu/kmu/act/ZoomImageActivity;)Ltw/edu/kmu/view/ProgressWheel;

    move-result-object v13

    iget-object v14, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v14}, Ltw/edu/kmu/act/ZoomImageActivity;->access$1000(Ltw/edu/kmu/act/ZoomImageActivity;)I

    move-result v14

    invoke-virtual {v13, v14}, Ltw/edu/kmu/view/ProgressWheel;->setProgress(I)V

    .line 244
    iget-object v13, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v13}, Ltw/edu/kmu/act/ZoomImageActivity;->access$200(Ltw/edu/kmu/act/ZoomImageActivity;)Ltw/edu/kmu/view/ProgressWheel;

    move-result-object v13

    const-string v14, "%1$2.0f%%"

    new-array v15, v3, [Ljava/lang/Object;

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v11, v11, v16

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v15, v5

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ltw/edu/kmu/view/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 245
    iget-object v11, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v11}, Ltw/edu/kmu/act/ZoomImageActivity;->access$200(Ltw/edu/kmu/act/ZoomImageActivity;)Ltw/edu/kmu/view/ProgressWheel;

    move-result-object v11

    invoke-virtual {v11}, Ltw/edu/kmu/view/ProgressWheel;->updateWheel()V

    goto :goto_3

    .line 247
    :cond_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 248
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 249
    invoke-static {}, Ltw/edu/kmu/act/ZoomImageActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v6, "\u5f9e\u6a94\u6848\u8b80\u5165\u5716\u7247"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 254
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 255
    iput-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 256
    iget-object v7, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v7, v2}, Ltw/edu/kmu/act/ZoomImageActivity;->access$700(Ltw/edu/kmu/act/ZoomImageActivity;Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 257
    iput-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 258
    invoke-static {v0, v4, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 259
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const-string v0, "Gallery\u5716\u6a94\u4f86\u6e90"

    const-string v2, "\u7db2\u8def\u4e0b\u8f09\u5f8c\u5b58\u6210\u66ab\u5b58\u6a94"

    .line 260
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    iget-object v0, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$1100(Ltw/edu/kmu/act/ZoomImageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "\u66f4\u65b0\u5931\u6557"

    return-object v0

    .line 269
    :cond_5
    :goto_4
    iget-object v0, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$600(Ltw/edu/kmu/act/ZoomImageActivity;)[Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v7, v0, v5

    const-string v0, "\u8b80\u5716"

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bmp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v4}, Ltw/edu/kmu/act/ZoomImageActivity;->access$600(Ltw/edu/kmu/act/ZoomImageActivity;)[Landroid/graphics/Bitmap;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$1100(Ltw/edu/kmu/act/ZoomImageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x3ed

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    iget-object v0, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$300(Ltw/edu/kmu/act/ZoomImageActivity;)[Z

    move-result-object v0

    if-eqz v0, :cond_6

    .line 273
    iget-object v0, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$300(Ltw/edu/kmu/act/ZoomImageActivity;)[Z

    move-result-object v0

    iget-object v2, v1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/ZoomImageActivity;->access$400(Ltw/edu/kmu/act/ZoomImageActivity;)I

    move-result v2

    aput-boolean v3, v0, v2

    :cond_6
    const-string v0, "\u66f4\u65b0\u5b8c\u6210"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 149
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 281
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/ZoomImageActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 282
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 158
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
