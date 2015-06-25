.class public interface abstract annotation Lde/gdata/mobilesecurity/database/Column$Type;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lde/gdata/mobilesecurity/database/Column$Type;
        defaults = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract defaults()Ljava/lang/String;
.end method

.method public abstract value()Lde/gdata/mobilesecurity/database/Column$ColumnType;
.end method
