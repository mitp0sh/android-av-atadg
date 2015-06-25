.class Lcom/bd/android/shared/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/bd/android/shared/HTTPManager2$ResponseInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/bd/android/shared/d;

.field public b:Ljava/lang/String;

.field public c:Lcom/bd/android/shared/HTTPManager2$Headers;

.field public d:Lcom/bd/android/shared/HTTPManager2$GETParameters;

.field public e:Lcom/bd/android/shared/f;

.field public f:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

.field final synthetic g:Lcom/bd/android/shared/HTTPManager2;


# direct methods
.method private constructor <init>(Lcom/bd/android/shared/HTTPManager2;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 544
    iput-object p1, p0, Lcom/bd/android/shared/e;->g:Lcom/bd/android/shared/HTTPManager2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 546
    iput-object v0, p0, Lcom/bd/android/shared/e;->a:Lcom/bd/android/shared/d;

    .line 548
    iput-object v0, p0, Lcom/bd/android/shared/e;->b:Ljava/lang/String;

    .line 549
    iput-object v0, p0, Lcom/bd/android/shared/e;->c:Lcom/bd/android/shared/HTTPManager2$Headers;

    .line 550
    iput-object v0, p0, Lcom/bd/android/shared/e;->d:Lcom/bd/android/shared/HTTPManager2$GETParameters;

    .line 551
    iput-object v0, p0, Lcom/bd/android/shared/e;->e:Lcom/bd/android/shared/f;

    .line 552
    iput-object v0, p0, Lcom/bd/android/shared/e;->f:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/c;)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/bd/android/shared/e;-><init>(Lcom/bd/android/shared/HTTPManager2;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 563
    .line 564
    iget-object v0, p0, Lcom/bd/android/shared/e;->a:Lcom/bd/android/shared/d;

    sget-object v2, Lcom/bd/android/shared/d;->c:Lcom/bd/android/shared/d;

    if-ne v0, v2, :cond_4

    .line 566
    iget-object v0, p0, Lcom/bd/android/shared/e;->f:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bd/android/shared/e;->e:Lcom/bd/android/shared/f;

    if-nez v0, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-object v1

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/bd/android/shared/e;->g:Lcom/bd/android/shared/HTTPManager2;

    iget-object v2, p0, Lcom/bd/android/shared/e;->f:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    iget-object v3, p0, Lcom/bd/android/shared/e;->e:Lcom/bd/android/shared/f;

    invoke-static {v0, v2, v3}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/HTTPManager2$PROCESSOR;Lcom/bd/android/shared/f;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    .line 572
    :goto_1
    iget-object v2, p0, Lcom/bd/android/shared/e;->a:Lcom/bd/android/shared/d;

    sget-object v3, Lcom/bd/android/shared/d;->a:Lcom/bd/android/shared/d;

    if-ne v2, v3, :cond_2

    .line 578
    iget-object v0, p0, Lcom/bd/android/shared/e;->g:Lcom/bd/android/shared/HTTPManager2;

    iget-object v2, p0, Lcom/bd/android/shared/e;->d:Lcom/bd/android/shared/HTTPManager2$GETParameters;

    iget-object v3, p0, Lcom/bd/android/shared/e;->c:Lcom/bd/android/shared/HTTPManager2$Headers;

    invoke-static {v0, v2, v3}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/HTTPManager2$GETParameters;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    .line 580
    :cond_2
    iget-object v2, p0, Lcom/bd/android/shared/e;->a:Lcom/bd/android/shared/d;

    sget-object v3, Lcom/bd/android/shared/d;->b:Lcom/bd/android/shared/d;

    if-ne v2, v3, :cond_3

    .line 582
    iget-object v0, p0, Lcom/bd/android/shared/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/bd/android/shared/e;->g:Lcom/bd/android/shared/HTTPManager2;

    iget-object v1, p0, Lcom/bd/android/shared/e;->e:Lcom/bd/android/shared/f;

    iget-object v2, p0, Lcom/bd/android/shared/e;->c:Lcom/bd/android/shared/HTTPManager2$Headers;

    invoke-static {v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/f;Lcom/bd/android/shared/HTTPManager2$Headers;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 589
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Lcom/bd/android/shared/HTTPManager2$ResponseInfo;)V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/bd/android/shared/e;->g:Lcom/bd/android/shared/HTTPManager2;

    invoke-static {v0}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/HTTPManager2;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/e;->g:Lcom/bd/android/shared/HTTPManager2;

    invoke-static {v0}, Lcom/bd/android/shared/HTTPManager2;->a(Lcom/bd/android/shared/HTTPManager2;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 598
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    iget-object v0, p0, Lcom/bd/android/shared/e;->g:Lcom/bd/android/shared/HTTPManager2;

    invoke-static {v0}, Lcom/bd/android/shared/HTTPManager2;->b(Lcom/bd/android/shared/HTTPManager2;)Lcom/bd/android/shared/HTTPManager2$ResponseHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bd/android/shared/HTTPManager2$ResponseHandler;->ResponseCallback(Lcom/bd/android/shared/HTTPManager2$ResponseInfo;)V

    .line 600
    return-void

    .line 598
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bd/android/shared/e;->a([Ljava/lang/Void;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 544
    check-cast p1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    invoke-virtual {p0, p1}, Lcom/bd/android/shared/e;->a(Lcom/bd/android/shared/HTTPManager2$ResponseInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 558
    return-void
.end method
