.class public Lcom/bd/android/shared/DBHandler$EventDBEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/bd/android/shared/DBHandler$EventDBEntry;->data:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/bd/android/shared/DBHandler$EventDBEntry;->timeStamp:Ljava/lang/String;

    .line 56
    iput p3, p0, Lcom/bd/android/shared/DBHandler$EventDBEntry;->type:I

    .line 57
    return-void
.end method
