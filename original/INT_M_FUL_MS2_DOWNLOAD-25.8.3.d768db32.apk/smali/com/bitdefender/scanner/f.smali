.class Lcom/bitdefender/scanner/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/bitdefender/scanner/ResultInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bitdefender/scanner/Scanner;

.field private b:Lcom/bitdefender/scanner/IResponseScan;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>(Lcom/bitdefender/scanner/Scanner;ILcom/bitdefender/scanner/IResponseScan;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1151
    iput-object p1, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1142
    iput-object v0, p0, Lcom/bitdefender/scanner/f;->d:Ljava/lang/String;

    .line 1143
    iput-object v0, p0, Lcom/bitdefender/scanner/f;->e:Ljava/lang/String;

    .line 1144
    iput-object v0, p0, Lcom/bitdefender/scanner/f;->f:Ljava/util/ArrayList;

    .line 1146
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bitdefender/scanner/f;->g:J

    .line 1148
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/Scanner;)Lcom/bitdefender/scanner/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bitdefender/scanner/k;->d()I

    move-result v0

    iput v0, p0, Lcom/bitdefender/scanner/f;->h:I

    .line 1152
    iput-object p3, p0, Lcom/bitdefender/scanner/f;->b:Lcom/bitdefender/scanner/IResponseScan;

    .line 1153
    iput p2, p0, Lcom/bitdefender/scanner/f;->c:I

    .line 1154
    return-void
.end method

.method static synthetic a(Lcom/bitdefender/scanner/f;)I
    .locals 1

    .prologue
    .line 1138
    iget v0, p0, Lcom/bitdefender/scanner/f;->h:I

    return v0
.end method

.method static synthetic a(Lcom/bitdefender/scanner/f;J)J
    .locals 1

    .prologue
    .line 1138
    iput-wide p1, p0, Lcom/bitdefender/scanner/f;->g:J

    return-wide p1
.end method

.method static synthetic b(Lcom/bitdefender/scanner/f;)J
    .locals 2

    .prologue
    .line 1138
    iget-wide v0, p0, Lcom/bitdefender/scanner/f;->g:J

    return-wide v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->b(Lcom/bitdefender/scanner/Scanner;)I

    move-result v0

    .line 1197
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    .line 1199
    new-instance v2, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v2}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 1200
    iput v0, v2, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 1201
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 1203
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    :goto_0
    return-object v1

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/Scanner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/BDUtils;->isInternetOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1209
    new-instance v0, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v0}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 1210
    const/16 v2, -0x6d

    iput v2, v0, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 1211
    iget-object v2, p0, Lcom/bitdefender/scanner/f;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 1213
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {}, Lcom/bd/android/shared/LicenseProdActivator;->getInstance()Lcom/bd/android/shared/LicenseProdActivator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/Scanner;Lcom/bd/android/shared/LicenseProdActivator;)Lcom/bd/android/shared/LicenseProdActivator;

    .line 1218
    iget-object v2, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->d(Lcom/bitdefender/scanner/Scanner;)Lcom/bd/android/shared/LicenseProdActivator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->d(Lcom/bitdefender/scanner/Scanner;)Lcom/bd/android/shared/LicenseProdActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bd/android/shared/LicenseProdActivator;->getPartnerID()I

    move-result v0

    :goto_1
    invoke-static {v2, v0}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/Scanner;I)I

    .line 1220
    new-instance v2, Lcom/bitdefender/scanner/h;

    invoke-direct {v2}, Lcom/bitdefender/scanner/h;-><init>()V

    .line 1221
    iget v0, p0, Lcom/bitdefender/scanner/f;->c:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 1247
    :goto_2
    invoke-virtual {v2}, Lcom/bitdefender/scanner/h;->c()V

    move-object v1, v0

    .line 1248
    goto :goto_0

    .line 1218
    :cond_2
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->e(Lcom/bitdefender/scanner/Scanner;)Lcom/bd/android/shared/LicenseActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bd/android/shared/LicenseActivator;->getPartnerID()I

    move-result v0

    goto :goto_1

    .line 1224
    :pswitch_0
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0, p0, v2}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 1228
    :pswitch_1
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0, p0, v2}, Lcom/bitdefender/scanner/Scanner;->b(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 1232
    :pswitch_2
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0, p0, v2}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 1236
    :pswitch_3
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    iget-object v1, p0, Lcom/bitdefender/scanner/f;->e:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/Scanner;Ljava/lang/String;Lcom/bitdefender/scanner/f;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 1240
    :pswitch_4
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    iget-object v1, p0, Lcom/bitdefender/scanner/f;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/bitdefender/scanner/Scanner;->b(Lcom/bitdefender/scanner/Scanner;Ljava/lang/String;Lcom/bitdefender/scanner/f;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 1244
    :pswitch_5
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    iget-object v1, p0, Lcom/bitdefender/scanner/f;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, v2}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/Scanner;Ljava/util/ArrayList;Lcom/bitdefender/scanner/f;Lcom/bitdefender/scanner/h;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 1221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/bitdefender/scanner/f;->d:Ljava/lang/String;

    .line 1163
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bitdefender/scanner/f;->f:Ljava/util/ArrayList;

    .line 1177
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1178
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/bitdefender/scanner/f;->e:Ljava/lang/String;

    .line 1172
    return-void
.end method

.method protected b(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bitdefender/scanner/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1254
    invoke-virtual {p0}, Lcom/bitdefender/scanner/f;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bitdefender/scanner/f;->b:Lcom/bitdefender/scanner/IResponseScan;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->b:Lcom/bitdefender/scanner/IResponseScan;

    invoke-interface {v0, p1}, Lcom/bitdefender/scanner/IResponseScan;->ResponseScanFinished(Ljava/util/ArrayList;)V

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/Scanner;->getUploadStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/Scanner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bitdefender/scanner/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/Scanner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bitdefender/scanner/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->f(Lcom/bitdefender/scanner/Scanner;)Landroid/os/AsyncTask;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1266
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    new-instance v1, Lcom/bitdefender/scanner/g;

    iget-object v2, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-direct {v1, v2, v4}, Lcom/bitdefender/scanner/g;-><init>(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/d;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/bitdefender/scanner/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/Scanner;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1278
    :cond_1
    :goto_0
    return-void

    .line 1270
    :cond_2
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->f(Lcom/bitdefender/scanner/Scanner;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 1272
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    new-instance v1, Lcom/bitdefender/scanner/g;

    iget-object v2, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-direct {v1, v2, v4}, Lcom/bitdefender/scanner/g;-><init>(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/d;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/bitdefender/scanner/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/Scanner;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1138
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bitdefender/scanner/f;->a([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1283
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->b:Lcom/bitdefender/scanner/IResponseScan;

    if-eqz v0, :cond_0

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    new-instance v1, Lcom/bitdefender/scanner/ResultInfo;

    invoke-direct {v1}, Lcom/bitdefender/scanner/ResultInfo;-><init>()V

    .line 1287
    const/16 v2, -0x134

    iput v2, v1, Lcom/bitdefender/scanner/ResultInfo;->result:I

    .line 1288
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    iget-object v1, p0, Lcom/bitdefender/scanner/f;->b:Lcom/bitdefender/scanner/IResponseScan;

    invoke-interface {v1, v0}, Lcom/bitdefender/scanner/IResponseScan;->ResponseScanFinished(Ljava/util/ArrayList;)V

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-virtual {v0}, Lcom/bitdefender/scanner/Scanner;->getUploadStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/Scanner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bitdefender/scanner/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->c(Lcom/bitdefender/scanner/Scanner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bitdefender/scanner/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1302
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->f(Lcom/bitdefender/scanner/Scanner;)Landroid/os/AsyncTask;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1304
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    new-instance v1, Lcom/bitdefender/scanner/g;

    iget-object v2, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-direct {v1, v2, v4}, Lcom/bitdefender/scanner/g;-><init>(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/d;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/bitdefender/scanner/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/Scanner;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1314
    :cond_1
    :goto_0
    return-void

    .line 1308
    :cond_2
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-static {v0}, Lcom/bitdefender/scanner/Scanner;->f(Lcom/bitdefender/scanner/Scanner;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    new-instance v1, Lcom/bitdefender/scanner/g;

    iget-object v2, p0, Lcom/bitdefender/scanner/f;->a:Lcom/bitdefender/scanner/Scanner;

    invoke-direct {v1, v2, v4}, Lcom/bitdefender/scanner/g;-><init>(Lcom/bitdefender/scanner/Scanner;Lcom/bitdefender/scanner/d;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/bitdefender/scanner/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bitdefender/scanner/Scanner;->a(Lcom/bitdefender/scanner/Scanner;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1138
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/bitdefender/scanner/f;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1183
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bitdefender/scanner/f;->b:Lcom/bitdefender/scanner/IResponseScan;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v2, p0, Lcom/bitdefender/scanner/f;->b:Lcom/bitdefender/scanner/IResponseScan;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v0, v1}, Lcom/bitdefender/scanner/IResponseScan;->ResponseScanInProgress(ILjava/lang/String;I)V

    .line 1187
    :cond_0
    return-void
.end method
