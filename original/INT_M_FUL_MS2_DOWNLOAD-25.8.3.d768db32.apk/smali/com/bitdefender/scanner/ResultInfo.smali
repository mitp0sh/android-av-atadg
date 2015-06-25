.class public Lcom/bitdefender/scanner/ResultInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xb6f03bf977d436L


# instance fields
.field public result:I

.field public sPackage:Ljava/lang/String;

.field public sThreatName:Ljava/lang/String;

.field public snd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/bitdefender/scanner/ResultInfo;->sPackage:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/bitdefender/scanner/ResultInfo;->sThreatName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bitdefender/scanner/ResultInfo;->snd:Z

    .line 18
    return-void
.end method
