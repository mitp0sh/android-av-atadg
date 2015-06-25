.class public Lcom/bd/android/shared/HTTPManager2$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/bd/android/shared/HTTPManager2$ResponseHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->a:Z

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->b:Z

    .line 303
    iput-object v1, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->c:Ljava/lang/String;

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->d:I

    .line 305
    iput-object v1, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->e:Lcom/bd/android/shared/HTTPManager2$ResponseHandler;

    .line 309
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bd/android/shared/u;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bd/android/shared/HTTPManager2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    return-void
.end method


# virtual methods
.method public SetRequestTimeout(I)Lcom/bd/android/shared/HTTPManager2$Builder;
    .locals 0

    .prologue
    .line 344
    iput p1, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->d:I

    .line 345
    return-object p0
.end method

.method public SetResponseCallback(Lcom/bd/android/shared/HTTPManager2$ResponseHandler;)Lcom/bd/android/shared/HTTPManager2$Builder;
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->e:Lcom/bd/android/shared/HTTPManager2$ResponseHandler;

    .line 339
    return-object p0
.end method

.method public SetURL(Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$Builder;
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->c:Ljava/lang/String;

    .line 333
    return-object p0
.end method

.method public UseBatchMode(Z)Lcom/bd/android/shared/HTTPManager2$Builder;
    .locals 0

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->b:Z

    .line 327
    return-object p0
.end method

.method public UseHTTPS(Z)Lcom/bd/android/shared/HTTPManager2$Builder;
    .locals 0

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->a:Z

    .line 315
    return-object p0
.end method

.method public build()Lcom/bd/android/shared/HTTPManager2;
    .locals 7

    .prologue
    .line 350
    new-instance v0, Lcom/bd/android/shared/HTTPManager2;

    iget-boolean v1, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->a:Z

    iget-boolean v2, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->b:Z

    iget-object v3, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->c:Ljava/lang/String;

    iget v4, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->d:I

    iget-object v5, p0, Lcom/bd/android/shared/HTTPManager2$Builder;->e:Lcom/bd/android/shared/HTTPManager2$ResponseHandler;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bd/android/shared/HTTPManager2;-><init>(ZZLjava/lang/String;ILcom/bd/android/shared/HTTPManager2$ResponseHandler;Lcom/bd/android/shared/c;)V

    return-object v0
.end method
