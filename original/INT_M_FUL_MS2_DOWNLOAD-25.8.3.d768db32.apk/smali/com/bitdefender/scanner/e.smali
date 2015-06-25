.class Lcom/bitdefender/scanner/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:I

.field d:Lorg/json/JSONObject;

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/bitdefender/scanner/Scanner;


# direct methods
.method public constructor <init>(Lcom/bitdefender/scanner/Scanner;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iput-object p1, p0, Lcom/bitdefender/scanner/e;->f:Lcom/bitdefender/scanner/Scanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object v1, p0, Lcom/bitdefender/scanner/e;->a:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/bitdefender/scanner/e;->c:I

    .line 117
    iput-object v1, p0, Lcom/bitdefender/scanner/e;->d:Lorg/json/JSONObject;

    .line 118
    iput-object v1, p0, Lcom/bitdefender/scanner/e;->e:Ljava/lang/String;

    .line 119
    return-void
.end method
