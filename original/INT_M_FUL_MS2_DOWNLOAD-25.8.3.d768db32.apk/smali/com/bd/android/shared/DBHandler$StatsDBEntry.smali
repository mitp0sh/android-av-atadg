.class public Lcom/bd/android/shared/DBHandler$StatsDBEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public sData:Ljava/lang/String;

.field public timeStamp:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->sData:Ljava/lang/String;

    .line 41
    iput-wide p2, p0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->timeStamp:J

    .line 42
    iput p4, p0, Lcom/bd/android/shared/DBHandler$StatsDBEntry;->type:I

    .line 43
    return-void
.end method
