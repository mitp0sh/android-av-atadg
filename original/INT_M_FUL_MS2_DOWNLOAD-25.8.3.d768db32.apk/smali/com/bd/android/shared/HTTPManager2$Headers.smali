.class public Lcom/bd/android/shared/HTTPManager2$Headers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/bd/android/shared/HTTPManager2;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bd/android/shared/HTTPManager2;)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lcom/bd/android/shared/HTTPManager2$Headers;->a:Lcom/bd/android/shared/HTTPManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2$Headers;->b:Ljava/util/LinkedList;

    .line 152
    return-void
.end method

.method private a()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2$Headers;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic a(Lcom/bd/android/shared/HTTPManager2$Headers;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bd/android/shared/HTTPManager2$Headers;->a()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public AddHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2$Headers;->b:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public ClearHeaders()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bd/android/shared/HTTPManager2$Headers;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 162
    return-void
.end method
