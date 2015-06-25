.class public Lcom/bd/android/shared/HTTPManager2$PROCESSOR;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public sType:Ljava/lang/String;

.field public sVerb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;->sType:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;->sVerb:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;->sType:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;->sVerb:Ljava/lang/String;

    .line 87
    return-void
.end method
