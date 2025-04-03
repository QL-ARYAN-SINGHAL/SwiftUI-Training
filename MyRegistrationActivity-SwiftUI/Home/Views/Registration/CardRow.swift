import SwiftUI

struct CardRow: View {
    
    var course: Courses
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(course.title!)
                .font(.title2)
                .bold()
                .padding(.bottom, 4)
                .foregroundStyle(.blue)
            
            HStack {
                Text(course.professor!)
                    .foregroundColor(.black)
                    .bold()
                Spacer()
                Text(course.time!)
                    .foregroundColor(.black)
                    .bold()
            }
            
            HStack {
                Text(course.credits!)
                    .foregroundColor(.black)
                    .bold()
                Spacer()
                Text(course.location!)
                    .foregroundColor(.black)
                    .bold()
            }
        }
        .padding(10)
        
        .frame(width: 320, height: 100)
        .background(Color.clear)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.green, lineWidth: 3)
        )
    }
}

#Preview {
    CardRow(course: courses[0])
}
